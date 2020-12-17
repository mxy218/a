.class public Lcom/meizu/common/widget/RoundCornerRecordView;
.super Landroid/widget/ImageView;
.source "RoundCornerRecordView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/RoundCornerRecordView$IconType;,
        Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    }
.end annotation


# static fields
.field private static final sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field private static final sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field private static sStartActivity:Z = false

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mBadgeText:Ljava/lang/String;

.field private mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeTextPaint:Landroid/graphics/Paint;

.field private mBadgeTextShadowColor:I

.field private mBadgeTextShadowRadius:I

.field private mBadgeTextSize:I

.field private mBgColor:I

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mContactId:J

.field private mContactPhone:Ljava/lang/String;

.field private mCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultColor:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstContactBmp:Landroid/graphics/Bitmap;

.field private mExtras:Landroid/os/Bundle;

.field private mHasShadow:Z

.field private mIconText:Ljava/lang/CharSequence;

.field private mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field private mIsClickToCall:Z

.field private mIsUseStyle:Z

.field private mListCallIcon:Landroid/graphics/drawable/Drawable;

.field private mLongClick:Z

.field private mOffsetRight:I

.field private mOldContactId:J

.field private mOldExtras:Landroid/os/Bundle;

.field private mOldPhone:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mRectView:Landroid/graphics/Rect;

.field private mRecycle:Z

.field private mRecycleOnDetached:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseCallIcon:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sSyncKeyLock:Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 171
    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/meizu/common/widget/RoundCornerRecordView;->sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 180
    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v1, v0

    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Lcom/meizu/common/widget/RoundCornerRecordView;->sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 70
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 72
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 76
    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 77
    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 78
    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 79
    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 83
    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    .line 84
    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    .line 85
    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mLongClick:Z

    const/4 v1, -0x1

    .line 110
    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    .line 122
    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    .line 205
    sget-object v1, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 208
    sget p2, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge_mcBorderType:I

    sget-object p3, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    iget p3, p3, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->borderTypeInt:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 212
    sget p3, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge_mcIconType:I

    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    iget v0, v0, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->iconTypeInt:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 216
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_round_colorfulbg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultColor:I

    .line 217
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget-object p1, Lcom/meizu/common/widget/RoundCornerRecordView;->sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/RoundCornerRecordView;->setBorderType(Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;)V

    .line 221
    sget-object p1, Lcom/meizu/common/widget/RoundCornerRecordView;->sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aget-object p1, p1, p3

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/RoundCornerRecordView;->setIconType(Lcom/meizu/common/widget/RoundCornerRecordView$IconType;)V

    .line 223
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->init()V

    return-void
.end method

.method private drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 7

    .line 764
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    .line 765
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    .line 770
    :cond_10
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 771
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_43

    .line 775
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    .line 776
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 777
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 778
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 783
    :cond_43
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 784
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 785
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    .line 786
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 787
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v1, v2

    add-float/2addr p2, v1

    sub-float/2addr p2, v3

    .line 790
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawContactDrawable()V
    .registers 12

    .line 636
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_9

    return-void

    .line 642
    :cond_9
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 647
    :cond_10
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 648
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 649
    iget-boolean v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    if-eqz v3, :cond_24

    .line 650
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 651
    iget v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 654
    :cond_24
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 656
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v10, 0x0

    if-eq v3, v4, :cond_47

    if-le v4, v3, :cond_3f

    sub-int/2addr v4, v3

    .line 663
    div-int/lit8 v4, v4, 0x2

    move v6, v3

    move v7, v6

    move v5, v4

    move v4, v10

    goto :goto_4b

    :cond_3f
    sub-int/2addr v3, v4

    .line 666
    div-int/lit8 v3, v3, 0x2

    move v6, v4

    move v7, v6

    move v5, v10

    move v4, v3

    goto :goto_4b

    :cond_47
    move v6, v3

    move v7, v4

    move v4, v10

    move v5, v4

    :goto_4b
    int-to-float v1, v1

    int-to-float v3, v6

    div-float/2addr v1, v3

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v8, v1, v3

    if-nez v8, :cond_62

    cmpl-float v3, v2, v3

    if-nez v3, :cond_62

    if-nez v4, :cond_62

    if-eqz v5, :cond_60

    goto :goto_62

    :cond_60
    move-object v1, v0

    goto :goto_70

    .line 678
    :cond_62
    :goto_62
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 679
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v9, 0x1

    move-object v3, v0

    .line 680
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 684
    :goto_70
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/RoundCornerRecordView;->getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 685
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 686
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eq v1, v0, :cond_89

    .line 689
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 693
    :cond_89
    iget-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz v1, :cond_92

    .line 694
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    iput-boolean v10, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    :cond_92
    return-void
.end method

.method private getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 345
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    .line 350
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_picture:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 347
    :cond_18
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_small_picture:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .line 703
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 702
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 704
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 705
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 708
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4c

    .line 709
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_cover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_4c

    .line 712
    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 713
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 717
    :cond_4c
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_57

    .line 718
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    .line 722
    :cond_57
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 723
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 724
    iget-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 725
    iget-object p0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 227
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    .line 232
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 356
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 357
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 356
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    .line 865
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 866
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    .line 868
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_17

    .line 869
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 870
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 871
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_17
    return-void
.end method

.method public getBorderType()Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    .registers 1

    .line 575
    iget-object p0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    return-object p0
.end method

.method public getIconType()Lcom/meizu/common/widget/RoundCornerRecordView$IconType;
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 891
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 892
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 893
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_c
    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    :goto_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 795
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 796
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 797
    :cond_16
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 798
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 799
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->drawContactDrawable()V

    if-eqz v0, :cond_23

    .line 802
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    :cond_23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 808
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 810
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-ne v2, v3, :cond_4c

    .line 811
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    add-int/2addr v3, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_51

    .line 814
    :cond_4c
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 817
    :goto_51
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 818
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 822
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_69

    .line 823
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 824
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_ba

    .line 826
    :cond_69
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 827
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/RoundCornerRecordView;->drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_83

    .line 830
    :cond_79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 831
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 832
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 836
    :goto_83
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    if-eqz v2, :cond_91

    .line 837
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 838
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 842
    :cond_91
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_ae

    .line 843
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 844
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 843
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 851
    :cond_ae
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_ba

    .line 852
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 853
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 859
    :cond_ba
    :goto_ba
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x0

    .line 860
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 932
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 933
    const-class p0, Lcom/meizu/common/widget/RoundCornerRecordView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 383
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 384
    iget-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    .line 385
    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 386
    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p0

    const/4 p3, 0x0

    .line 384
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 371
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    if-eqz v0, :cond_12

    .line 372
    iget p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 373
    iget p2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    const/high16 v0, 0x40000000  # 2.0f

    .line 374
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 375
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 378
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 901
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-eqz v0, :cond_21

    .line 902
    invoke-virtual {p0}, Landroid/widget/ImageView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    if-nez v0, :cond_1f

    .line 903
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mContactPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldPhone:Ljava/lang/String;

    .line 904
    iget-wide v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mContactId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldContactId:J

    .line 905
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldExtras:Landroid/os/Bundle;

    .line 906
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x1

    return p0

    .line 910
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    if-eqz p1, :cond_d

    .line 878
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 879
    :try_start_6
    sput-boolean v1, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    .line 880
    monitor-exit v0

    goto :goto_d

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0

    .line 882
    :cond_d
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setBackgroundColorId(Ljava/lang/String;)V
    .registers 4

    .line 237
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_colorful_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    rem-int/2addr p1, v1

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_25

    .line 241
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    .line 242
    :cond_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setBorderType(Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;)V
    .registers 4

    if-eqz p1, :cond_1b3

    .line 476
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 481
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 483
    iget-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 485
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p1, :cond_1f

    .line 486
    iget-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    :cond_1f
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_box:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 491
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_text_shadow_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowRadius:I

    .line 493
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/meizu/common/R$color;->mc_badge_text_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowColor:I

    .line 496
    sget-object p1, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v0, :cond_15e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_109

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_71

    const/4 v0, 0x5

    if-eq p1, v0, :cond_71

    .line 565
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 566
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 568
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_small_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_1b2

    .line 550
    :cond_71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_contact_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 552
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_contact_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 554
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_picture_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 556
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_picture_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 558
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_1b2

    .line 515
    :cond_b3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_sms_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 517
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_sms_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 519
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 521
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 523
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 525
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 527
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_1b2

    .line 498
    :cond_109
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_list_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 500
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_list_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 502
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 504
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 506
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto :goto_1b2

    .line 532
    :cond_15e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_small_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 534
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_border_small_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 536
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_small_picture_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 538
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_contact_small_picture_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 540
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 542
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 544
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$dimen;->mc_badge_small_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    :goto_1b2
    return-void

    .line 473
    :cond_1b3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setClickToCall(Z)V
    .registers 3

    .line 582
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-eq v0, p1, :cond_9

    .line 583
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    .line 584
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_9
    return-void
.end method

.method public setContactBadgeText(Ljava/lang/String;)V
    .registers 4

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    .line 617
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    goto :goto_30

    .line 619
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 621
    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    goto :goto_30

    :cond_18
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 623
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_2e

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2e

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 629
    :cond_2e
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    .line 632
    :goto_30
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setHasShadow(Z)V
    .registers 3

    .line 606
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    if-eq v0, p1, :cond_9

    .line 607
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    .line 608
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_9
    return-void
.end method

.method public setIconText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 394
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    .line 395
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_d
    return-void
.end method

.method public setIconType(Lcom/meizu/common/widget/RoundCornerRecordView$IconType;)V
    .registers 3

    if-eqz p1, :cond_85

    .line 409
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-ne v0, p1, :cond_7

    return-void

    .line 413
    :cond_7
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 414
    sget-object p1, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_8c

    const/4 p1, 0x0

    .line 456
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 451
    :pswitch_1a  #0x8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_voicemail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 446
    :pswitch_27  #0x7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_record_fail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 441
    :pswitch_34  #0x6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_record:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 436
    :pswitch_41  #0x5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_ringing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 431
    :pswitch_4e  #0x4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_reject:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 426
    :pswitch_5b  #0x3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_missed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 421
    :pswitch_68  #0x2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_incoming:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_81

    .line 416
    :pswitch_75  #0x1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/common/R$drawable;->mc_sym_call_list_outgoing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 459
    :goto_81
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    .line 406
    :cond_85
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_75  #00000001
        :pswitch_68  #00000002
        :pswitch_5b  #00000003
        :pswitch_4e  #00000004
        :pswitch_41  #00000005
        :pswitch_34  #00000006
        :pswitch_27  #00000007
        :pswitch_1a  #00000008
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 312
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 314
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_a
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 320
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez p1, :cond_8

    .line 324
    iget-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 330
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_18

    :cond_17
    move-object p1, v2

    .line 333
    :goto_18
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_23

    if-eq v1, p1, :cond_23

    .line 334
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 338
    :cond_23
    iget-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz p1, :cond_34

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_34

    .line 339
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_34
    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    return-void
.end method

.method public setImageResource(I)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 248
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3f

    .line 250
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 255
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1f

    .line 256
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v0

    .line 259
    :goto_20
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2b

    if-eq v2, p1, :cond_2b

    .line 260
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 264
    :cond_2b
    iget-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz p1, :cond_3c

    instance-of p1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3c

    .line 265
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3c
    const/4 p1, 0x0

    .line 267
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    :goto_3f
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 274
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3f

    .line 276
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 277
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 280
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 281
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1f

    .line 282
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v0

    .line 285
    :goto_20
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2b

    if-eq v2, p1, :cond_2b

    .line 286
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 290
    :cond_2b
    iget-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz p1, :cond_3c

    instance-of p1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3c

    .line 291
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3c
    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    :goto_3f
    return-void
.end method

.method public setPressed(Z)V
    .registers 3

    .line 916
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 919
    :cond_15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method public setRecordClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 2

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTilte(Ljava/lang/CharSequence;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
