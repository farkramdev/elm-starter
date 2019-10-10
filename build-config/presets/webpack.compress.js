import CompressionWebpackPlugin from "compression-webpack-plugin";

module.exports = () => ({
  plugins: [new CompressionWebpackPlugin()]
});