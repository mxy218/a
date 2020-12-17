.class public Lcom/meizu/settings/widget/SystemLockView;
.super Landroid/widget/LinearLayout;
.source "SystemLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;,
        Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;
    }
.end annotation


# instance fields
.field private digitPanel:Landroid/view/View;

.field private haschar:Z

.field private illegal:Z

.field private isInitKeyPadType:Z

.field private mBottomLayoutResId:I

.field private mCellCount:I

.field private mEditText:Landroid/widget/EditText;

.field private mEnableHapticFeedback:Z

.field private mHideTheNorInput:Z

.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mIcons2:[Landroid/graphics/drawable/Drawable;

.field private mInStealthMode:Z

.field private mInputTextButton:Landroid/widget/ImageView;

.field private mInputTextButtonStat:I

.field private mInputTextButtonVisible:Z

.field private mIsNotify:Z

.field private mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

.field private mLeftButton:Landroid/widget/Button;

.field private mMaxCellLength:I

.field private mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

.field private mPassword:Ljava/lang/String;

.field private mReturnBtn:Landroid/widget/ImageView;

.field private mRightButton:Landroid/widget/Button;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mTipTextView:Landroid/widget/TextView;

.field private mTipTextView2:Landroid/widget/TextView;

.field private mWindowRect:Landroid/graphics/Rect;

.field private maxlen:I

.field private mkeyPadType:I

.field private passwordLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    .line 160
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mInStealthMode:Z

    .line 98
    iput-boolean v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mEnableHapticFeedback:Z

    const/4 v2, 0x0

    .line 99
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    const/4 v3, 0x0

    .line 113
    iput v3, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    .line 114
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 115
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 116
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 117
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 118
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 119
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    .line 120
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    .line 121
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    .line 122
    iput v3, v0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    const-string v4, ""

    .line 123
    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    const/4 v4, 0x4

    .line 124
    iput v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    .line 125
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/meizu/settings/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    const v5, 0x7f0d0371

    .line 126
    iput v5, v0, Lcom/meizu/settings/widget/SystemLockView;->mBottomLayoutResId:I

    .line 127
    iput-boolean v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonVisible:Z

    const/16 v1, 0xc

    new-array v5, v1, [Landroid/graphics/drawable/Drawable;

    .line 129
    iput-object v5, v0, Lcom/meizu/settings/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 130
    iput-boolean v3, v0, Lcom/meizu/settings/widget/SystemLockView;->mIsNotify:Z

    .line 138
    iput v3, v0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    .line 139
    iput-boolean v3, v0, Lcom/meizu/settings/widget/SystemLockView;->haschar:Z

    .line 140
    iput-boolean v3, v0, Lcom/meizu/settings/widget/SystemLockView;->illegal:Z

    const/4 v5, 0x6

    .line 141
    iput v5, v0, Lcom/meizu/settings/widget/SystemLockView;->maxlen:I

    new-array v5, v1, [Landroid/graphics/drawable/Drawable;

    .line 142
    iput-object v5, v0, Lcom/meizu/settings/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    .line 145
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 146
    iput-boolean v3, v0, Lcom/meizu/settings/widget/SystemLockView;->isInitKeyPadType:Z

    .line 147
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    .line 148
    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 440
    new-instance v5, Lcom/meizu/settings/widget/SystemLockView$1;

    invoke-direct {v5, v0}, Lcom/meizu/settings/widget/SystemLockView$1;-><init>(Lcom/meizu/settings/widget/SystemLockView;)V

    iput-object v5, v0, Lcom/meizu/settings/widget/SystemLockView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 162
    sget-object v5, Lcom/android/settings/R$styleable;->SystemLockView:[I

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual {v6, v7, v5, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v7, 0x3

    .line 164
    invoke-virtual {v5, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lcom/meizu/settings/widget/SystemLockView;->mInStealthMode:Z

    const/4 v7, 0x2

    .line 166
    invoke-virtual {v5, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lcom/meizu/settings/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 169
    invoke-virtual {v5, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v7, 0x11

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    .line 171
    iget v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mBottomLayoutResId:I

    .line 173
    iget v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    .line 176
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0370

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->digitPanel:Landroid/view/View;

    .line 178
    iget-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->digitPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v4, 0x7f0a0389

    .line 180
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0363

    .line 181
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    const v4, 0x7f0a0734

    .line 182
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const v4, 0x7f0a0388

    .line 183
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/widget/LockDigitView;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    const v4, 0x7f0a052f

    .line 184
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const v4, 0x7f0a072f

    .line 185
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0364

    .line 186
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    .line 187
    iget-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move v4, v3

    :goto_f9
    if-ge v4, v1, :cond_102

    .line 190
    iget-object v6, v0, Lcom/meizu/settings/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f9

    .line 192
    :cond_102
    iget-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 194
    iget-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_10e

    .line 195
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10e
    const v2, 0x7f0a06a4

    .line 198
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/widget/LockPasswordView;

    iput-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    .line 199
    iget-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    iget v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v2, v4}, Lcom/meizu/settings/widget/LockPasswordView;->setMaxNum(I)V

    .line 201
    iget-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_12d

    .line 202
    iget-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_12d
    move v2, v3

    :goto_12e
    if-ge v2, v1, :cond_146

    .line 205
    iget-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0300b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12e

    .line 208
    :cond_146
    iget-object v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080292

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/settings/widget/LockPasswordView;->setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080294

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/settings/widget/LockPasswordView;->setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const v2, 0x7f08034c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    iget-object v2, v0, Lcom/meizu/settings/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v4, v0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, ""

    invoke-virtual/range {v4 .. v9}, Lcom/meizu/settings/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 214
    iget-object v10, v0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v13, ""

    invoke-virtual/range {v10 .. v15}, Lcom/meizu/settings/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 216
    iget-boolean v1, v0, Lcom/meizu/settings/widget/SystemLockView;->isInitKeyPadType:Z

    if-nez v1, :cond_194

    .line 217
    iget v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    invoke-direct {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->changeType(I)V

    .line 219
    :cond_194
    invoke-virtual {v0, v3}, Lcom/meizu/settings/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 220
    iget-object v1, v0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/meizu/settings/widget/SystemLockView;->updateWidgetLayout()V

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/meizu/settings/widget/SystemLockView;->updatePasswordTextView()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/SystemLockView;Lcom/meizu/settings/widget/LockDigitView$Cell;)Ljava/lang/String;
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->converNum(Lcom/meizu/settings/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/SystemLockView;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyKeyLeftButtonClick()V

    return-void
.end method

.method static synthetic access$1002(Lcom/meizu/settings/widget/SystemLockView;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->haschar:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/widget/SystemLockView;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->addPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/widget/SystemLockView;)Landroid/widget/ImageView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/SystemLockView;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyKeyRightButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/SystemLockView;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->addCell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/SystemLockView;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/SystemLockView;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/SystemLockView;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mIsNotify:Z

    return p0
.end method

.method static synthetic access$602(Lcom/meizu/settings/widget/SystemLockView;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mIsNotify:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/widget/SystemLockView;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyCellFhish()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/widget/SystemLockView;)Landroid/widget/EditText;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$902(Lcom/meizu/settings/widget/SystemLockView;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->illegal:Z

    return p1
.end method

.method private addCell(Ljava/lang/String;)V
    .registers 4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 248
    iget p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    .line 249
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->updatePasswordTextView()V

    .line 250
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyCellAdded()V

    return-void
.end method

.method private addPassword(Ljava/lang/String;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    .line 524
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->updatePasswordTextView()V

    .line 525
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyCellAdded()V

    return-void
.end method

.method private changeType(I)V
    .registers 6

    .line 492
    iget p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_54

    .line 493
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x11

    .line 494
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 495
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    iget-object v3, p0, Lcom/meizu/settings/widget/SystemLockView;->mIcons2:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Lcom/meizu/settings/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 501
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 503
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 504
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 505
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 506
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_92

    :cond_54
    const/4 p1, 0x6

    .line 508
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setMaxLen(I)V

    .line 509
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 511
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->passwordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    iget-object v2, p0, Lcom/meizu/settings/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 515
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    new-instance v1, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/settings/widget/SystemLockView;Lcom/meizu/settings/widget/SystemLockView$1;)V

    invoke-virtual {p1, v1}, Lcom/meizu/settings/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;)V

    .line 516
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080343

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_92
    return-void
.end method

.method private converNum(Lcom/meizu/settings/widget/LockDigitView$Cell;)Ljava/lang/String;
    .registers 2

    .line 422
    invoke-virtual {p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getRow()I

    move-result p0

    .line 423
    invoke-virtual {p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getColumn()I

    move-result p1

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    const/16 p1, 0xa

    if-ne p0, p1, :cond_14

    const-string p0, "left"

    goto :goto_26

    :cond_14
    const/16 p1, 0xb

    if-ne p0, p1, :cond_1b

    const-string p0, "0"

    goto :goto_26

    :cond_1b
    const/16 p1, 0xc

    if-ne p0, p1, :cond_22

    const-string p0, "right"

    goto :goto_26

    .line 432
    :cond_22
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_26
    return-object p0
.end method

.method private notifyCellAdded()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 281
    iget-object v1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onCellAdded(Ljava/lang/String;)V

    .line 283
    :cond_9
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    iget v1, p0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    if-lt v0, v1, :cond_19

    .line 285
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mIsNotify:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mIsNotify:Z

    .line 287
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyCellFhish()V

    :cond_19
    return-void
.end method

.method private notifyCellCleared()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 300
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onCellCleared(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private notifyCellFhish()V
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onCellFhish(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private notifyInputTextButtonClick()V
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 318
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onInputTextButtonClick(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private notifyKeyLeftButtonClick()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 324
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onKeyLeftButtonClick(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private notifyKeyRightButtonClick()V
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 330
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onKeyRightButtonClick(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private notifyLeftButtonClick()V
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 312
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onLeftButtonClick(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private notifyRightButtonClick()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_9

    .line 306
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;->onRightButtonClick(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private updateDeleteButtonStatu()V
    .registers 2

    .line 268
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    if-nez v0, :cond_14

    .line 269
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_22

    .line 270
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    .line 273
    :cond_14
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_22

    .line 274
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_22
    :goto_22
    return-void
.end method

.method private updatePasswordTextView()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    if-nez v0, :cond_2a

    .line 257
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 258
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mHideTheNorInput:Z

    if-eqz v0, :cond_20

    .line 259
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/settings/widget/SystemLockView;->maxlen:I

    iget v2, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    if-lt v1, v2, :cond_1d

    move v1, v2

    :cond_1d
    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/LockPasswordView;->setMaxNum(I)V

    .line 261
    :cond_20
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/LockPasswordView;->setCurNum(I)Z

    .line 262
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->updateDeleteButtonStatu()V

    .line 264
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private updateWidgetLayout()V
    .registers 4

    .line 227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0a0117

    .line 229
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_24

    .line 231
    iget v2, p0, Lcom/meizu/settings/widget/SystemLockView;->mBottomLayoutResId:I

    if-eqz v2, :cond_1f

    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_24

    :cond_1f
    const/16 v0, 0x8

    .line 234
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    :cond_24
    :goto_24
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mBottomLayoutResId:I

    const v1, 0x7f0d0371

    if-ne v0, v1, :cond_4b

    const v0, 0x7f0a03b2

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    const v0, 0x7f0a05e4

    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 240
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public checkChar()Z
    .registers 1

    .line 773
    iget-boolean p0, p0, Lcom/meizu/settings/widget/SystemLockView;->haschar:Z

    return p0
.end method

.method public checkIllegal()Z
    .registers 1

    .line 794
    iget-boolean p0, p0, Lcom/meizu/settings/widget/SystemLockView;->illegal:Z

    return p0
.end method

.method public clearCell(Z)V
    .registers 5

    .line 685
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    if-lez v0, :cond_45

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    const-string p1, ""

    .line 687
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 688
    iput v1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    .line 689
    iget v2, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    if-ne v2, v0, :cond_18

    .line 690
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 692
    :cond_18
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1}, Lcom/meizu/settings/widget/LockDigitView;->resetPattern()V

    goto :goto_3d

    .line 694
    :cond_1e
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 696
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v0

    .line 695
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 697
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 698
    iget p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mCellCount:I

    .line 699
    iget p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    if-nez p1, :cond_3d

    .line 700
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mKeyPad:Lcom/meizu/settings/widget/LockDigitView;

    invoke-virtual {p1}, Lcom/meizu/settings/widget/LockDigitView;->deleteLastCell()V

    .line 702
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->updatePasswordTextView()V

    .line 703
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyCellCleared()V

    .line 704
    iput-boolean v1, p0, Lcom/meizu/settings/widget/SystemLockView;->mIsNotify:Z

    :cond_45
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 1

    .line 825
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEnteredPassword()V
    .registers 3

    .line 758
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyKeyRightButtonClick()V

    .line 759
    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 760
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 761
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 763
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1e

    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    if-ne v0, v1, :cond_1e

    .line 354
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    .line 355
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 357
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_4d

    .line 358
    :cond_1e
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_34

    .line 359
    iget p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez p1, :cond_2a

    .line 360
    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    goto :goto_4d

    :cond_2a
    if-ne p1, v1, :cond_30

    .line 362
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_4d

    .line 364
    :cond_30
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_4d

    .line 366
    :cond_34
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3c

    .line 367
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_4d

    .line 368
    :cond_3c
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_44

    .line 369
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyRightButtonClick()V

    goto :goto_4d

    .line 371
    :cond_44
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_4d

    if-ne p1, v0, :cond_4d

    .line 372
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyLeftButtonClick()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_17

    .line 337
    iget p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 338
    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    return v0

    :cond_d
    if-ne p1, v0, :cond_13

    .line 341
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyInputTextButtonClick()V

    return v0

    .line 344
    :cond_13
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->notifyInputTextButtonClick()V

    return v0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 379
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 380
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->updatePasswordTextView()V

    return-void
.end method

.method public setDisplaySpace(I)V
    .registers 3

    const v0, 0x7f0a0765

    .line 547
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setHideTheNorInput(Z)V
    .registers 2

    .line 551
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mHideTheNorInput:Z

    .line 552
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setHollowVisible(Z)V
    .registers 2

    .line 559
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/LockPasswordView;->setHollowVisible(Z)V

    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2

    .line 583
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mInStealthMode:Z

    return-void
.end method

.method public setInputTextButtonStat(II)V
    .registers 4

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 734
    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    goto :goto_11

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 736
    iput v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonStat:I

    goto :goto_11

    .line 738
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_11
    return-void
.end method

.method public setInputTextButtonVisibility(Z)V
    .registers 4

    if-eqz p1, :cond_9

    .line 747
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 749
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    :goto_f
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButtonVisible:Z

    return-void
.end method

.method public setKeyPadType(I)V
    .registers 3

    const/4 v0, 0x1

    .line 783
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SystemLockView;->isInitKeyPadType:Z

    .line 784
    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mkeyPadType:I

    .line 785
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->changeType(I)V

    return-void
.end method

.method public setMaxLen(I)V
    .registers 3

    .line 675
    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->maxlen:I

    const/16 v0, 0x11

    .line 676
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    .line 677
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mSpecial:Lcom/meizu/settings/widget/LockPasswordView;

    iget v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/widget/LockPasswordView;->setMaxNum(I)V

    .line 678
    invoke-direct {p0}, Lcom/meizu/settings/widget/SystemLockView;->updatePasswordTextView()V

    return-void
.end method

.method public setPanelListener(Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;)V
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mPanelListener:Lcom/meizu/settings/widget/SystemLockView$OnPanelListener;

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2

    .line 593
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SystemLockView;->mEnableHapticFeedback:Z

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTip2(Ljava/lang/String;)V
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTip2_Visibility(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 814
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    .line 816
    :cond_9
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView2:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f
    return-void
.end method

.method public setTipAnim(Ljava/lang/String;)V
    .registers 11

    .line 608
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 610
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 611
    fill-array-data v4, :array_72

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v6, v3, [F

    .line 612
    fill-array-data v6, :array_7a

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v3, [F

    .line 613
    fill-array-data v6, :array_82

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 614
    new-instance v7, Lcom/meizu/settings/widget/SystemLockView$2;

    invoke-direct {v7, p0}, Lcom/meizu/settings/widget/SystemLockView$2;-><init>(Lcom/meizu/settings/widget/SystemLockView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 625
    new-instance v7, Lcom/meizu/settings/widget/SystemLockView$3;

    invoke-direct {v7, p0, v0, p1}, Lcom/meizu/settings/widget/SystemLockView$3;-><init>(Lcom/meizu/settings/widget/SystemLockView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v3, [F

    .line 648
    fill-array-data p0, :array_8a

    const-string p1, "translationX"

    invoke-static {v0, p1, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v7, 0xb4

    .line 649
    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 650
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 651
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object v4, p1, v1

    const/4 v0, 0x1

    aput-object v6, p1, v0

    .line 652
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object v5, p1, v1

    aput-object p0, p1, v0

    .line 653
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 654
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_72
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_82
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_8a
    .array-data 4
        0x43340000  # 180.0f
        0x0
    .end array-data
.end method

.method public setTipAnimShake(Ljava/lang/String;)V
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    const/16 v1, 0x19

    new-array v1, v1, [F

    .line 662
    fill-array-data v1, :array_1e

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a1

    .line 666
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 667
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_1e
    .array-data 4
        0x3f19999a  # 0.6f
        0x4039999a  # 2.9f
        0x41066666  # 8.4f
        0x416e6666  # 14.9f
        0x41a33333  # 20.4f
        0x41b5999a  # 22.7f
        0x41a00000  # 20.0f
        0x41566666  # 13.4f
        0x4099999a  # 4.8f
        -0x3f8ccccd  # -3.8f
        -0x3ed80000  # -10.5f
        -0x3eae6666  # -13.1f
        -0x3ec80000  # -11.5f
        -0x3f100000  # -7.5f
        -0x3fe00000  # -2.5f
        0x40333333  # 2.8f
        0x40d9999a  # 6.8f
        0x41066666  # 8.4f
        0x40fccccd  # 7.9f
        0x40d9999a  # 6.8f
        0x40a9999a  # 5.3f
        0x406ccccd  # 3.7f
        0x400ccccd  # 2.2f
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public setWidgetLayoutVisibility(Z)V
    .registers 3

    const v0, 0x7f0a0117

    .line 719
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_17

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 722
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_17

    :cond_12
    const/16 p1, 0x8

    .line 724
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_17
    :goto_17
    return-void
.end method
