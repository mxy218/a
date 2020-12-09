.class Lcom/android/server/wm/LaunchParamsController$LaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchParams"
.end annotation


# instance fields
.field final mBounds:Landroid/graphics/Rect;

.field mPreferredDisplayId:I

.field mWindowingMode:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 223
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 224
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 226
    :cond_12
    check-cast p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 228
    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iget v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 229
    :cond_1b
    iget v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget v3, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v2, v3, :cond_22

    return v1

    .line 230
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_31

    :cond_2d
    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    .line 224
    :cond_32
    :goto_32
    return v1
.end method

.method hasPreferredDisplay()Z
    .registers 3

    .line 218
    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method hasWindowingMode()Z
    .registers 2

    .line 214
    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 236
    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    add-int/2addr v0, v1

    .line 237
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    add-int/2addr v0, v1

    .line 238
    return v0
.end method

.method isEmpty()Z
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method reset()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 198
    return-void
.end method

.method set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 204
    iget p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput p1, p0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 205
    return-void
.end method
