.class Lcom/meizu/common/renderer/effect/StateMachine$StateCache;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateCache"
.end annotation


# instance fields
.field private mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/meizu/common/renderer/effect/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 57
    iput v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mSize:I

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    .line 60
    iput p1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mSize:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public get()Lcom/meizu/common/renderer/effect/StateMachine$State;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 65
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/renderer/effect/StateMachine$State;

    return-object p0

    .line 67
    :cond_17
    new-instance p0, Lcom/meizu/common/renderer/effect/StateMachine$State;

    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/StateMachine$State;-><init>()V

    return-object p0
.end method

.method public put(Lcom/meizu/common/renderer/effect/StateMachine$State;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_19

    .line 73
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_16

    return-void

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 77
    :cond_19
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mSize:I

    if-ge v0, v1, :cond_28

    .line 78
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->mCache:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_28
    return-void
.end method
