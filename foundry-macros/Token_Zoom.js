// Update selected tokens to flip between big and small.

const updates = [];

for (let token of canvas.tokens.controlled) {
  let newHeight = 3;
  let newWidth = 3;
  if (token.data.height > 1) { newHeight=1; newWidth=1; }
  updates.push({
    _id: token.id,
    height: newHeight,
    width: newWidth
  });
};

// Make it update
canvas.scene.updateEmbeddedDocuments("Token",updates);
