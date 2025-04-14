class Comment {
    constructor(name, text) {
      this.name = name;
      this.text = text;
    }
  
    createElement() {
      const card = document.createElement('div');
      card.className = 'comment-card';
      card.innerHTML = `
        <div class="avatar"></div>
        <div class="name">${this.name}</div>
        <div class="text">${this.text}</div>
      `;
      return card;
    }
  }
  
  class CommentSection {
    constructor(containerSelector) {
      this.container = document.querySelector(containerSelector);
      this.comments = [];
    }
  
    addComment(comment) {
      this.comments.push(comment);
      const newCard = comment.createElement();
      this.container.appendChild(newCard);
  
      if (this.comments.length > 3) {
        this.container.scrollLeft = this.container.scrollWidth;
      }
    }
  }
  
  const commentSection = new CommentSection('#commentContainer');
  
  document.querySelector('#addCommentBtn').addEventListener('click', () => {
    const name = prompt('Enter your name:');
    const text = prompt('Enter your comment:');
    if (name && text) {
      commentSection.addComment(new Comment(name, text));
    }
  });
  