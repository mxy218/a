.class Lcom/android/systemui/egg/MLand$Player;
.super Landroid/widget/ImageView;
.source "MLand.java"

# interfaces
.implements Lcom/android/systemui/egg/MLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Player"
.end annotation


# static fields
.field static sNextColor:I


# instance fields
.field public color:I

.field public final corners:[F

.field public dv:F

.field private mAlive:Z

.field private mBoosting:Z

.field private mLand:Lcom/android/systemui/egg/MLand;

.field private mScore:I

.field private mScoreField:Landroid/widget/TextView;

.field private mTouchX:F

.field private mTouchY:F

.field private final sColors:[I

.field private final sHull:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1088
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000  # -1.0f

    .line 1014
    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 1019
    fill-array-data p1, :array_50

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 1030
    fill-array-data p1, :array_60

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    .line 1040
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    .line 1090
    sget p1, Lcom/android/systemui/R$drawable;->android:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1091
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1092
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    sget v0, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    array-length v1, p1

    rem-int/2addr v0, v1

    aget p1, p1, v0

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    .line 1093
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1094
    new-instance p1, Lcom/android/systemui/egg/MLand$Player$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/egg/MLand$Player$1;-><init>(Lcom/android/systemui/egg/MLand$Player;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    nop

    :array_50
    .array-data 4
        -0x24bbc9
        -0xc48719
        -0xb4c00
        -0xf062a8
        -0x84e780
        -0x616162
    .end array-data

    :array_60
    .array-data 4
        0x3e99999a  # 0.3f
        0x0
        0x3f333333  # 0.7f
        0x0
        0x3f6b851f  # 0.92f
        0x3ea8f5c3  # 0.33f
        0x3f6b851f  # 0.92f
        0x3f400000  # 0.75f
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
        0x3ecccccd  # 0.4f
        0x3f800000  # 1.0f
        0x3da3d70a  # 0.08f
        0x3f400000  # 0.75f
        0x3da3d70a  # 0.08f
        0x3ea8f5c3  # 0.33f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;
    .registers 1

    .line 1009
    iget-object p0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/egg/MLand$Player;)Z
    .registers 1

    .line 1009
    iget-boolean p0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/egg/MLand$Player;)I
    .registers 1

    .line 1009
    iget p0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/egg/MLand$Player;I)V
    .registers 2

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/systemui/egg/MLand$Player;->addScore(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/egg/MLand$Player;)F
    .registers 1

    .line 1009
    iget p0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/egg/MLand$Player;)F
    .registers 1

    .line 1009
    iget p0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    return p0
.end method

.method private addScore(I)V
    .registers 3

    .line 1063
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    return-void
.end method

.method public static create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;
    .registers 5

    .line 1043
    new-instance v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$Player;-><init>(Landroid/content/Context;)V

    .line 1044
    iput-object p0, v0, Lcom/android/systemui/egg/MLand$Player;->mLand:Lcom/android/systemui/egg/MLand;

    .line 1045
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    const/4 v1, 0x4

    .line 1046
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private setScore(I)V
    .registers 3

    .line 1052
    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    .line 1053
    iget-object p0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    if-eqz p0, :cond_14

    .line 1054
    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v0, :cond_d

    const-string p1, "??"

    goto :goto_11

    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public below(I)Z
    .registers 8

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_18

    .line 1121
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget v3, v3, v4

    float-to-int v3, v3

    if-lt v3, p1, :cond_15

    return v5

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return v1
.end method

.method public boost()V
    .registers 5

    const/4 v0, 0x1

    .line 1157
    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    .line 1158
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1160
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1161
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3fa00000  # 1.25f

    .line 1162
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1163
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1164
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z_BOOST:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 1165
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1166
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1167
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public boost(FF)V
    .registers 3

    .line 1151
    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    .line 1152
    iput p2, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->boost()V

    return-void
.end method

.method public die()V
    .registers 2

    const/4 v0, 0x0

    .line 1183
    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    return-void
.end method

.method public getScore()I
    .registers 1

    .line 1059
    iget p0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    return p0
.end method

.method public prepareCheckIntersections()V
    .registers 11

    .line 1107
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1108
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    .line 1109
    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_36

    .line 1111
    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v3, 0x2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    aget v8, v7, v5

    mul-float/2addr v8, v6

    int-to-float v9, v0

    add-float/2addr v8, v9

    aput v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 1112
    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1114
    :cond_36
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1115
    iget-object p0, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public reset()V
    .registers 6

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->access$1200(Lcom/android/systemui/egg/MLand;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1079
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    .line 1080
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1078
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setY(F)V

    const/4 v0, 0x0

    .line 1081
    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    .line 1083
    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    const/4 v0, 0x0

    .line 1084
    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    return-void
.end method

.method public setScoreField(Landroid/widget/TextView;)V
    .registers 4

    .line 1067
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    if-eqz p1, :cond_2c

    .line 1069
    iget p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    invoke-direct {p0, p1}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    .line 1071
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1072
    iget-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-static {p0}, Lcom/android/systemui/egg/MLand;->access$1100(I)F

    move-result p0

    const v0, 0x3f333333  # 0.7f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_28

    const/high16 p0, -0x1000000

    goto :goto_29

    :cond_28
    const/4 p0, -0x1

    :goto_29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2c
    return-void
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 1192
    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    return-void
.end method

.method public step(JJFF)V
    .registers 7

    .line 1128
    iget-boolean p1, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    if-nez p1, :cond_14

    .line 1130
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result p1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr p2, p6

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void

    .line 1134
    :cond_14
    iget-boolean p1, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    if-eqz p1, :cond_23

    .line 1135
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    goto :goto_2f

    .line 1137
    :cond_23
    iget p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->G:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1139
    :goto_2f
    iget p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_48

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    goto :goto_5e

    .line 1140
    :cond_48
    iget p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5e

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1142
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p1

    iget p2, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_6c

    move p1, p2

    .line 1143
    :cond_6c
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1144
    iget p1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 1145
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float p2, p2

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    mul-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    invoke-static {p1, p2, p3}, Lcom/android/systemui/egg/MLand;->rlerp(FFF)F

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/egg/MLand;->clamp(F)F

    move-result p1

    const/high16 p2, -0x3d4c0000  # -90.0f

    const/high16 p3, 0x42b40000  # 90.0f

    invoke-static {p1, p3, p2}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result p1

    add-float/2addr p1, p3

    .line 1144
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->prepareCheckIntersections()V

    return-void
.end method

.method public unboost()V
    .registers 3

    const/4 v0, 0x0

    .line 1171
    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    const/high16 v0, -0x40800000  # -1.0f

    .line 1172
    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    .line 1174
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1175
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 1176
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1177
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1178
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z:F

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 1179
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
