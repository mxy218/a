.class public Lcom/android/keyguard/KeyguardSliceView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSliceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/Observer;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;,
        Lcom/android/keyguard/KeyguardSliceView$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mClickActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContentChangeListener:Ljava/lang/Runnable;

.field private mDarkAmount:F

.field private mDisplayId:I

.field private mHasHeader:Z

.field private mIconSize:I

.field private mIconSizeWithHeader:I

.field private mKeyguardSliceUri:Landroid/net/Uri;

.field private final mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

.field private final mRowPadding:I

.field private mRowTextSize:F

.field private final mRowWithHeaderPadding:I

.field private mRowWithHeaderTextSize:F

.field private mSlice:Landroidx/slice/Slice;

.field private mTextColor:I

.field mTitle:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .registers 8
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 98
    iput p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const/4 p2, -0x1

    .line 101
    iput p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mDisplayId:I

    .line 120
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "keyguard_slice_uri"

    .line 121
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 123
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->subtitle_clock_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowPadding:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->header_subtitle_padding:I

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderPadding:I

    .line 127
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 128
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSliceView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 130
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 131
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 p2, 0x113

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2, p3}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 132
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x2

    const-wide/16 v1, 0x226

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 133
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2, p3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 134
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 136
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 138
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1, p2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, p4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-void
.end method

.method private showSlice()V
    .registers 14

    const-string v0, "KeyguardSliceView#showSlice"

    .line 192
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 197
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1f

    .line 198
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 200
    :cond_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 203
    :cond_23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 205
    new-instance v0, Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    invoke-direct {v0, v3, v4}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    .line 206
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_48

    .line 207
    invoke-virtual {v3}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    const-string v5, "list_item"

    invoke-virtual {v3, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v2

    :goto_49
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 209
    :goto_51
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_83

    .line 210
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/widget/SliceContent;

    .line 211
    invoke-virtual {v6}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.android.systemui.keyguard/action"

    .line 213
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 214
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 217
    :cond_83
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    const/4 v6, 0x0

    if-nez v5, :cond_8e

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c7

    .line 220
    :cond_8e
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_a2

    .line 224
    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_a3

    :cond_a2
    move-object v5, v6

    .line 225
    :goto_a3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_c7

    .line 227
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_c7

    .line 228
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_c7
    :goto_c7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v5

    .line 234
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 235
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-lez v0, :cond_d6

    move v1, v2

    :cond_d6
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    if-eqz v8, :cond_e8

    iget v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderPadding:I

    goto :goto_ea

    :cond_e8
    iget v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowPadding:I

    :goto_ea
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 238
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_f1
    if-ge v7, v0, :cond_1a6

    .line 241
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/RowContent;

    .line 242
    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v8

    .line 243
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 245
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    if-nez v10, :cond_125

    .line 247
    new-instance v10, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    iget-object v11, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v10, v5}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setTextColor(I)V

    .line 249
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    sub-int v9, v7, v9

    .line 251
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v11, v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 255
    :cond_125
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v9

    if-eqz v9, :cond_134

    .line 256
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v9

    goto :goto_135

    :cond_134
    move-object v9, v6

    .line 258
    :goto_135
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v11

    if-nez v11, :cond_142

    move-object v11, v6

    goto :goto_146

    .line 261
    :cond_142
    invoke-virtual {v11}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    :goto_146
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 264
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    if-eqz v1, :cond_157

    iget v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderTextSize:F

    goto :goto_159

    :cond_157
    iget v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowTextSize:F

    .line 263
    :goto_159
    invoke-virtual {v10, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 267
    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v8, "image"

    invoke-static {v1, v8}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_193

    .line 270
    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    if-eqz v8, :cond_16f

    iget v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSizeWithHeader:I

    goto :goto_171

    :cond_16f
    iget v8, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 271
    :goto_171
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v11, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_194

    .line 273
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    .line 274
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    int-to-float v12, v8

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 275
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v2, v2, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_194

    :cond_193
    move-object v1, v6

    .line 278
    :cond_194
    :goto_194
    invoke-virtual {v10, v1, v6, v6, v6}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 279
    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_19e

    move v1, v4

    goto :goto_19f

    :cond_19e
    move v1, v2

    .line 280
    :goto_19f
    invoke-virtual {v10, v1}, Landroid/widget/Button;->setClickable(Z)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f1

    .line 284
    :cond_1a6
    :goto_1a6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1c5

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c3

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    :cond_1c3
    add-int/2addr v2, v4

    goto :goto_1a6

    .line 292
    :cond_1c5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1cc

    .line 293
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 295
    :cond_1cc
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private updateTextColors()V
    .registers 6

    .line 305
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    .line 309
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 310
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_21

    .line 311
    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string p1, "KeyguardSliceView:"

    .line 411
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClickActions: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTitle: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "null"

    if-nez p3, :cond_2f

    move-object p3, v2

    goto :goto_3c

    :cond_2f
    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_37

    move p3, v0

    goto :goto_38

    :cond_37
    move p3, v1

    :goto_38
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :goto_3c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mRow: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-nez p3, :cond_55

    goto :goto_61

    :cond_55
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    :goto_5d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mTextColor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDarkAmount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSlice: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mHasHeader: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getTextColor()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 371
    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    iget p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method public hasHeader()Z
    .registers 1

    .line 188
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 161
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDisplayId:I

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    .line 339
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->showSlice()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 83
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz p1, :cond_f

    .line 320
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_f
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 3

    .line 382
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 383
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSizeWithHeader:I

    .line 384
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowTextSize:F

    .line 386
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_row_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderTextSize:F

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 172
    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDisplayId:I

    if-nez v0, :cond_c

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 175
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 144
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 145
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/android/systemui/R$id;->row:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView$Row;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    .line 147
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    .line 148
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    .line 149
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSizeWithHeader:I

    .line 150
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowTextSize:F

    .line 152
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->header_row_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRowWithHeaderTextSize:F

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 344
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSliceView;->setupUri(Ljava/lang/String;)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    .line 180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_8

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public refresh()V
    .registers 3

    const-string v0, "KeyguardSliceView#refresh"

    .line 392
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.android.systemui.keyguard/main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 396
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getAttachedInstance()Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 398
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    goto :goto_37

    :cond_20
    const-string v0, "KeyguardSliceView"

    const-string v1, "Keyguard slice not bound yet?"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_37

    .line 404
    :cond_29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    .line 406
    :goto_37
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->onChanged(Landroidx/slice/Slice;)V

    .line 407
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setContentChangeListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setDarkAmount(F)V
    .registers 3

    .line 299
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->setDarkAmount(F)V

    .line 301
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method setTextColor(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 376
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    .line 377
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method public setupUri(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_4

    const-string p1, "content://com.android.systemui.keyguard/main"

    :cond_4
    const/4 v0, 0x0

    .line 356
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    .line 358
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 361
    :cond_15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 362
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_2c

    .line 365
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_2c
    return-void
.end method
