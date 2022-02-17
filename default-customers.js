const privateUsers = async () => {
  //poderia obter os usuarios via dynamodb

  return ["fred@fred.com", "ana@ana.com", "teste"];
};

exports.private = privateUsers;
