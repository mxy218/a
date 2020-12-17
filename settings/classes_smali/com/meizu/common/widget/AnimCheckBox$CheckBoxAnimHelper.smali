.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;
.super Ljava/lang/Object;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AnimCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxAnimHelper"
.end annotation


# instance fields
.field private DEBUG:Z

.field private mAnimator1:Landroid/animation/ObjectAnimator;

.field private mAnimator2:Landroid/animation/ObjectAnimator;

.field private mAnimator3:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHasInit:Z

.field private mInterpolator1:Landroid/animation/TimeInterpolator;

.field private mInterpolator2:Landroid/animation/TimeInterpolator;

.field private mInterpolator3:Landroid/animation/TimeInterpolator;

.field private mInterpolator4:Landroid/animation/TimeInterpolator;

.field private mIsAnimation:Z

.field private mTarget:Lcom/meizu/common/widget/AnimCheckBox;

.field private mTargetActivatedState:Z

.field private mTargetChecekedState:Z


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/AnimCheckBox;)V
    .registers 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 142
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 148
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    .line 149
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V

    .line 150
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .registers 1

    .line 133
    iget-boolean p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .registers 1

    .line 133
    iget-boolean p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private init()V
    .registers 8

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_35

    .line 156
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3c449ba6  # 0.012f

    const v2, 0x3d50e560  # 0.051f

    const/high16 v3, 0x3f800000  # 1.0f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    .line 157
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    .line 158
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd  # 0.2f

    const v2, 0x3d762b6b  # 0.0601f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    .line 159
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    goto :goto_42

    .line 161
    :cond_35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    :goto_42
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 164
    fill-array-data v1, :array_c8

    const-string/jumbo v2, "scaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 165
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    .line 183
    fill-array-data v1, :array_d0

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    .line 185
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v0, [F

    .line 187
    fill-array-data v1, :array_d8

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 213
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    aput-object v2, v0, v6

    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    aput-object p0, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_c8
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_d0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_d8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public setActivated(Z)V
    .registers 6

    .line 258
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    .line 259
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-eqz v0, :cond_ea

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-nez v0, :cond_c

    goto/16 :goto_ea

    .line 263
    :cond_c
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-eqz v0, :cond_6c

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActivated activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isActivated()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mTargetChecekedState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    .line 266
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 267
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xx"

    .line 264
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_6c
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_e9

    if-nez p1, :cond_83

    .line 270
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_e9

    .line 273
    :cond_83
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-eqz v0, :cond_d8

    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 275
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_e9

    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_e9

    .line 276
    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_f0

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 278
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_f8

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x28

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_e9

    :cond_d8
    if-nez p1, :cond_e9

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 288
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 289
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    :cond_e9
    :goto_e9
    return-void

    .line 260
    :cond_ea
    :goto_ea
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    return-void

    :array_f0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_f8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setChecked(Z)V
    .registers 4

    .line 217
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-eqz v0, :cond_c9

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-nez v0, :cond_a

    goto/16 :goto_c9

    .line 222
    :cond_a
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-eqz v0, :cond_4c

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChecked checked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mTargetChecekedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 225
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xx"

    .line 223
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4c
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-eq p1, v0, :cond_c8

    .line 228
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-eqz p1, :cond_90

    .line 230
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 231
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 232
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xe6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_c8

    :cond_7f
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    goto :goto_c8

    .line 243
    :cond_90
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 244
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_c8

    .line 249
    :cond_b9
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 250
    iget-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 251
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_c8
    :goto_c8
    return-void

    .line 218
    :cond_c9
    :goto_c9
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 219
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    return-void
.end method

.method public setIsAnimation(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    return-void
.end method
