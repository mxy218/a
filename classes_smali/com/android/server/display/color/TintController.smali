.class abstract Lcom/android/server/display/color/TintController;
.super Ljava/lang/Object;
.source "TintController.java"


# instance fields
.field private mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

.field private mIsActivated:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static matrixToString([FI)Ljava/lang/String;
    .registers 8

    .line 107
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    if-gtz p1, :cond_9

    goto :goto_36

    .line 114
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    move v0, v2

    :goto_f
    array-length v4, p0

    if-ge v0, v4, :cond_31

    .line 116
    rem-int v4, v0, p1

    if-nez v4, :cond_1b

    .line 117
    const-string v4, "\n      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1b
    new-array v4, v1, [Ljava/lang/Object;

    aget v5, p0, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%9.6f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 121
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_36
    :goto_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid arguments when formatting matrix to string, matrix is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " columns: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v0
.end method


# virtual methods
.method public cancelAnimator()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    if-eqz v0, :cond_7

    .line 43
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->cancel()V

    .line 45
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 73
    return-void
.end method

.method public endAnimator()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->end()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 55
    :cond_a
    return-void
.end method

.method public getAnimator()Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    return-object v0
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMatrix()[F
.end method

.method public isActivated()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isActivatedStateNotSet()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 36
    return-void
.end method

.method public abstract setMatrix(I)V
.end method

.method public abstract setUp(Landroid/content/Context;Z)V
.end method
