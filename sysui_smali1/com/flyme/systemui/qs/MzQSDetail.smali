.class public Lcom/flyme/systemui/qs/MzQSDetail;
.super Landroid/widget/RelativeLayout;
.source "MzQSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/MzQSDetail$Callback;
    }
.end annotation


# instance fields
.field private mArrowView:Lcom/flyme/systemui/qs/ArrowView;

.field private mCurrentRecordRow:I

.field private mDetail:Landroid/view/View;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

.field private mDetailInAnimation:Landroid/view/animation/Animation;

.field private mDetailOutAnimation:Landroid/view/animation/Animation;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsPanelCallback:Lcom/flyme/systemui/qs/MzQSDetail$Callback;

.field private mRealDefaultDisplayY:I

.field private mReserveSpace:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 135
    new-instance p2, Lcom/flyme/systemui/qs/MzQSDetail$2;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/qs/MzQSDetail$2;-><init>(Lcom/flyme/systemui/qs/MzQSDetail;)V

    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQsPanelCallback:Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    const-string/jumbo p2, "window"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mWindowManager:Landroid/view/WindowManager;

    .line 54
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->setupAnimations()V

    .line 55
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->updateResource()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/android/systemui/qs/QSPanel;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/DetailScrollView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/qs/MzQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 6

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/flyme/systemui/qs/MzQSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/qs/MzQSDetail;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mCurrentRecordRow:I

    return p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/qs/MzQSDetail;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->onDetailClosingAnimationEnd()V

    return-void
.end method

.method private handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 168
    :goto_7
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 169
    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 170
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/qs/MzQSDetail;->setDetailPosition(Landroid/graphics/Point;)V

    .line 171
    iput p4, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mCurrentRecordRow:I

    if-eqz p1, :cond_a6

    .line 174
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p2

    .line 175
    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-interface {p1, p3, p4, v2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_9e

    .line 179
    iget-object p4, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {p4}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 180
    iget-object p4, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {p4, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 181
    iget-object p4, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 183
    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$string;->accessibility_quick_settings_detail:I

    new-array p4, v0, [Ljava/lang/Object;

    .line 185
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, p4, v1

    .line 183
    invoke-virtual {p2, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 186
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 187
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 188
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p5, :cond_7f

    .line 190
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_e3

    .line 193
    :cond_7f
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p1, :cond_e3

    .line 194
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetailStateChanged(Z)V

    .line 195
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    instance-of p1, p1, Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p1, :cond_e3

    .line 196
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mCurrentRecordRow:I

    invoke-virtual {p1, v1, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setGridContentAlpha(ZI)V

    goto :goto_e3

    .line 177
    :cond_9e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must return detail view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_a6
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p1, :cond_c0

    .line 202
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 203
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->closeDetailView()V

    :cond_c0
    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 206
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQsPanelCallback:Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    invoke-interface {p1, v1}, Lcom/flyme/systemui/qs/MzQSDetail$Callback;->onScanStateChanged(Z)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p5, :cond_e0

    .line 209
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_e3

    .line 212
    :cond_e0
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->onDetailClosingAnimationEnd()V

    :cond_e3
    :goto_e3
    return-void
.end method

.method private onDetailClosingAnimationEnd()V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 277
    :cond_f
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 278
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1c
    const/16 v0, 0x8

    .line 280
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_40

    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    instance-of v0, v0, Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz v0, :cond_3b

    .line 283
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/MzQSTileLayout;

    const/4 v1, 0x1

    iget v3, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mCurrentRecordRow:I

    invoke-virtual {v0, v1, v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setGridContentAlpha(ZI)V

    .line 285
    :cond_3b
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetailStateChanged(Z)V

    :cond_40
    return-void
.end method

.method private setupAnimations()V
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->qs_list_view_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailInAnimation:Landroid/view/animation/Animation;

    .line 219
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/flyme/systemui/qs/MzQSDetail$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/qs/MzQSDetail$3;-><init>(Lcom/flyme/systemui/qs/MzQSDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 250
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->qs_list_view_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailOutAnimation:Landroid/view/animation/Animation;

    .line 251
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/flyme/systemui/qs/MzQSDetail$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/qs/MzQSDetail$4;-><init>(Lcom/flyme/systemui/qs/MzQSDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private updateDetailLayout()V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    if-nez v0, :cond_5

    return-void

    .line 294
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 295
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_bottom_padding_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_37

    .line 297
    :cond_1e
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 298
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_37

    :cond_36
    move v0, v2

    .line 300
    :goto_37
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 302
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 303
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 304
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateResource()V
    .registers 3

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 61
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mRealDefaultDisplayY:I

    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_19

    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateDetailPosition()V

    .line 65
    :cond_19
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->updateDetailLayout()V

    return-void
.end method


# virtual methods
.method public isShowingDetail()Z
    .registers 1

    .line 110
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$MzQSDetail(Landroid/view/View;)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 70
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    .line 71
    :goto_4
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 72
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 74
    :cond_1a
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->updateResource()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 80
    sget v0, Lcom/android/systemui/R$id;->reserve_space:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mReserveSpace:Landroid/view/View;

    .line 81
    sget v0, Lcom/android/systemui/R$id;->arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/ArrowView;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    .line 82
    sget v0, Lcom/android/systemui/R$id;->qs_detail_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetail:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/DetailScrollView;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mDetailContent:Lcom/flyme/systemui/qs/DetailScrollView;

    new-instance v1, Lcom/flyme/systemui/qs/MzQSDetail$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/qs/MzQSDetail$1;-><init>(Lcom/flyme/systemui/qs/MzQSDetail;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/qs/DetailScrollView;->setListener(Lcom/flyme/systemui/qs/DetailScrollView$Listener;)V

    .line 97
    new-instance v0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$ElZ5YChOKNY1YZi57Fu2dBB1WbA;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$ElZ5YChOKNY1YZi57Fu2dBB1WbA;-><init>(Lcom/flyme/systemui/qs/MzQSDetail;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mReserveSpace:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDetailPosition(Landroid/graphics/Point;)V
    .registers 5

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mRealDefaultDisplayY:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 118
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mReserveSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mArrowView:Lcom/flyme/systemui/qs/ArrowView;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/ArrowView;->setArrowPosition(I)V

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 106
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail;->mQsPanelCallback:Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->addCallback(Lcom/flyme/systemui/qs/MzQSDetail$Callback;)V

    return-void
.end method
