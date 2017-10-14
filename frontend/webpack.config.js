const HtmlWebpackPlugin = require('html-webpack-plugin');
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const UglifyJSPlugin = require('uglifyjs-webpack-plugin');
const webpack = require('webpack'); //to access built-in plugins
const path = require('path');

const config = {
  entry: ["./src/ts/main.ts", "./src/scss/app.scss"],
  output: {
      path: path.resolve('../public/'),
      filename: '[name].js'
  },

  // Включить карты кода для отладки вывода webpack
  devtool: "source-map",
  resolve: {
    extensions: [".ts", ".tsx", ".js", ".sass", ".scss", ".css"]
  },
  watch: true,
  watchOptions: {
    aggregateTimeout: 300,
    poll: 1000
  },
  module: {
    rules: [
      {
        test: /\.(ts|tsx)$/,
        exclude: /node_modules/,
        use: "ts-loader"
      },
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: 'babel-loader'
      },
      {
        test: /\.scss$/,
        exclude: /node_modules/,
        use: ExtractTextPlugin.extract({
          // publicPath: '../',
          fallback: 'style-loader',
          //resolve-url-loader may be chained before sass-loader if necessary
          use: [
            {
              loader: 'css-loader',
              options: {
                sourceMap: true,
                autoprefixer: {
                  add: true,
                  cascade: false,
                },
              },
            },
            {
              loader: 'sass-loader',
              options: {
                includePaths: [
                  path.resolve(__dirname, 'src/scss'),
                ],
                sourceMap: true,
              },
            },
          ],
        })
      },
      {
        test: /\.css$/,
        use: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: 'css-loader'
        })
      },
      {
        test: /\.(jpg|svg|png|gif)$/,
        include: /images/,
        use: {
          loader: 'file-loader',
          options: {
            name: 'images/[name].[ext]',
            // outputPath: ''
          }
        }
      },
      {
        test: /\.(woff(2)?|ttf|eot|otf|svg)(\?v=\d+\.\d+\.\d+)?$/,
        use: {
          loader: 'file-loader',
          options: {
            name: '[name].[ext]',
            outputPath: 'fonts/'
          }
        }
      },
      {
        test: /\.(html)$/,
        use: {
          loader: 'html-loader',
          options: {
            minimize: true,
            removeComments: false,
            collapseWhitespace: false
          }
        }
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin("css/style.css"),
    new UglifyJSPlugin(),
    new HtmlWebpackPlugin({ template: './src/index.html' }),
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery',
      Popper: ['popper.js', 'default']
    })
  ],
  devServer: {
    inline: true,
    port: 9000
  }
};

module.exports = config;