// Next.js API route support: https://nextjs.org/docs/api-routes/introduction

export default (req, res) => {
  console.log('from the next js hello api');
  res.status(200).json({ name: 'John Doe!!!' });
};
