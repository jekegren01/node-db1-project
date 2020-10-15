const server = require("./api/server.js");
const accountRoutes = require('./accounts/accountRoutes')
const PORT = process.env.PORT || 5000;

server.use('/api/accounts', accountRoutes)

server.use((err, req, res, next) => {
	console.log(err)
	res.status(500).json({
		message: "Something went wrong",
	})
})

server.listen(PORT, () => {
  console.log(`\n== API running on port ${PORT} ==\n`);
});
