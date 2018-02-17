module.exports = async function Hello(ctx) {
    ctx.body = {
        message: 'Hello World',
        headers: ctx.headers
    };
};