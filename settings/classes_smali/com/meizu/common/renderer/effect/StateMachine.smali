.class public Lcom/meizu/common/renderer/effect/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/StateMachine$StateCache;,
        Lcom/meizu/common/renderer/effect/StateMachine$State;
    }
.end annotation


# instance fields
.field private mFrameBufferId:I

.field private final mIdentityMatrix:[F

.field private final mMVPMatrix:[F

.field private final mModelMatrix:[F

.field private final mProjectionMatrix:[F

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/meizu/common/renderer/effect/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field private mStateCaches:Lcom/meizu/common/renderer/effect/StateMachine$StateCache;

.field private final mTexMatrix:[F

.field private final mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStack:Ljava/util/Stack;

    .line 15
    new-instance v0, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStateCaches:Lcom/meizu/common/renderer/effect/StateMachine$StateCache;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 16
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mMVPMatrix:[F

    new-array v1, v0, [F

    .line 18
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mViewMatrix:[F

    new-array v1, v0, [F

    .line 19
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mProjectionMatrix:[F

    new-array v1, v0, [F

    .line 20
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    new-array v1, v0, [F

    .line 21
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mTexMatrix:[F

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mFrameBufferId:I

    new-array v0, v0, [F

    .line 29
    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mIdentityMatrix:[F

    .line 26
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/StateMachine;->reset()V

    return-void

    nop

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public getFinalMatrix()[F
    .registers 13

    .line 212
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mViewMatrix:[F

    iget-object v4, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 213
    iget-object v10, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mMVPMatrix:[F

    iget-object v8, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mProjectionMatrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v10

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 214
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mMVPMatrix:[F

    return-object p0
.end method

.method public getFrameBufferId()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mFrameBufferId:I

    return p0
.end method

.method public getModelMatrix()[F
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    return-object p0
.end method

.method public getTexMaxtrix()[F
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mTexMatrix:[F

    return-object p0
.end method

.method public identityModelM()V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityTexM()V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mTexMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityViewM()V
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mViewMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public orthoM(FFFF)V
    .registers 13

    .line 185
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v6, -0x3d380000  # -100.0f

    const/high16 v7, 0x42c80000  # 100.0f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public pop()V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/StateMachine$State;

    if-eqz v0, :cond_25

    .line 117
    iget-object v1, v0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mModelMatrix:[F

    iget-object v2, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v1, v0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mTexMatrix:[F

    iget-object v2, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mTexMatrix:[F

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget v1, v0, Lcom/meizu/common/renderer/effect/StateMachine$State;->mFrameBufferId:I

    iput v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mFrameBufferId:I

    .line 120
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStateCaches:Lcom/meizu/common/renderer/effect/StateMachine$StateCache;

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->put(Lcom/meizu/common/renderer/effect/StateMachine$State;)V

    return-void

    .line 116
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong to invoke pop."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public push()V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStateCaches:Lcom/meizu/common/renderer/effect/StateMachine$StateCache;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->get()Lcom/meizu/common/renderer/effect/StateMachine$State;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    iget-object v3, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mTexMatrix:[F

    iget p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mFrameBufferId:I

    invoke-virtual {v1, v2, v3, p0}, Lcom/meizu/common/renderer/effect/StateMachine$State;->init([F[FI)Lcom/meizu/common/renderer/effect/StateMachine$State;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recycle()V
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mStateCaches:Lcom/meizu/common/renderer/effect/StateMachine$StateCache;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/StateMachine$StateCache;->clear()V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 231
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 232
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 233
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 234
    iput v1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mFrameBufferId:I

    return-void
.end method

.method public scale(FFF)V
    .registers 5

    .line 137
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setFrameBufferId(I)V
    .registers 2

    .line 193
    iput p1, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mFrameBufferId:I

    return-void
.end method

.method public setMatrix([FI)V
    .registers 5

    .line 168
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public translate(FFF)V
    .registers 5

    .line 124
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/StateMachine;->mModelMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
