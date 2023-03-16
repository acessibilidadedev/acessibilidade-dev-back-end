const { save, update, remove } = require("../services/topic.dao");

exports.Topic = class {
  constructor({     
    title,
    description,
    author,
  }) {
    this.title = title;
    this.description = description;
    this.author = author;
  }

  async create() {
    return await save(this);
  }

  async update({ id }) {
    // atualizar os dados
    return await update(id, this);
  }

  async delete({ id }) {
    // excluir o tópico
    return await remove(id);
  }
};
