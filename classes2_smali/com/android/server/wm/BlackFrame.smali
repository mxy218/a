.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTransactionFactory:Lcom/android/server/wm/TransactionFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransactionFactory;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 117
    move-object v10, p0

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v10, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 96
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, v10, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    .line 97
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v1, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 118
    nop

    .line 120
    move-object/from16 v1, p1

    iput-object v1, v10, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 121
    move/from16 v1, p7

    iput-boolean v1, v10, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v10, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v10, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 128
    :try_start_31
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v11, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_51

    .line 129
    iget-object v12, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v11, Landroid/graphics/Rect;->top:I

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v14, v12, v13

    .line 132
    :cond_51
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v11, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_71

    .line 133
    iget-object v12, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v13, 0x1

    new-instance v14, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v14, v12, v13

    .line 136
    :cond_71
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_91

    .line 137
    iget-object v12, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v13, 0x2

    new-instance v14, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v14, v12, v13

    .line 140
    :cond_91
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v11, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_b1

    .line 141
    iget-object v12, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v13, 0x3

    new-instance v14, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v14, v12, v13
    :try_end_b1
    .catchall {:try_start_31 .. :try_end_b1} :catchall_b4

    .line 144
    :cond_b1
    nop

    .line 146
    nop

    .line 150
    return-void

    .line 146
    :catchall_b4
    move-exception v0

    .line 147
    invoke-virtual {p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    throw v0
.end method


# virtual methods
.method public clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 194
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 195
    aget-object v2, v1, v0

    if-eqz v2, :cond_f

    .line 196
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix(Landroid/view/SurfaceControl$Transaction;)V

    .line 194
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_12
    return-void
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_18

    .line 169
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 170
    aget-object v2, v1, v0

    if-eqz v2, :cond_15

    .line 171
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 169
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 175
    :cond_18
    return-void
.end method

.method public kill()V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_26

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v3, v2

    if-ge v1, v3, :cond_23

    .line 156
    aget-object v3, v2, v1

    if-eqz v3, :cond_20

    .line 159
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 160
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 155
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 163
    :cond_23
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 165
    :cond_26
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 104
    const-string v0, " / Inner: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 105
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 106
    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_4e

    .line 107
    aget-object v1, v1, v0

    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 109
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 110
    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 111
    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 113
    :cond_4e
    return-void
.end method

.method public setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 6

    .line 178
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 179
    aget-object v2, v1, v0

    if-eqz v2, :cond_f

    .line 180
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 178
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_12
    return-void
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .registers 6

    .line 186
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 187
    aget-object v2, v1, v0

    if-eqz v2, :cond_f

    .line 188
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 186
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_12
    return-void
.end method
