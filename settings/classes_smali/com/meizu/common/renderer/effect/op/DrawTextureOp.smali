.class public Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
.super Lcom/meizu/common/renderer/effect/op/DrawOp;
.source "DrawTextureOp.java"


# instance fields
.field public texture:Lcom/meizu/common/renderer/effect/texture/Texture;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/op/DrawOp;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;
    .registers 6

    .line 21
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 22
    iput p2, p0, Lcom/meizu/common/renderer/effect/op/DrawOp;->x:I

    .line 23
    iput p3, p0, Lcom/meizu/common/renderer/effect/op/DrawOp;->y:I

    .line 24
    iput p4, p0, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    .line 25
    iput p5, p0, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    return-object p0
.end method
