.class Lcom/meizu/common/renderer/effect/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field mFrameBufferId:I

.field final mModelMatrix:[F

.field final mTexMatrix:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 37
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mModelMatrix:[F

    new-array v0, v0, [F

    .line 38
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mTexMatrix:[F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mFrameBufferId:I

    return-void
.end method


# virtual methods
.method public init([F[FI)Lcom/meizu/common/renderer/effect/StateMachine$State;
    .registers 7

    .line 48
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mModelMatrix:[F

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mTexMatrix:[F

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput p3, p0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mFrameBufferId:I

    return-object p0
.end method
