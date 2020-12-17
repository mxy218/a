.class Lcom/meizu/common/app/SlideNotice$SlideViewController;
.super Ljava/lang/Object;
.source "SlideNotice.java"

# interfaces
.implements Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideViewController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;
    }
.end annotation


# instance fields
.field private isBelowDefaultActionBar:Z

.field private isSlideAnim:Z

.field private mActionBarHeight:I

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentClickListener:Landroid/view/View$OnClickListener;

.field private mCustom:Landroid/widget/FrameLayout;

.field mGravity:I

.field private mIsOverlaidByStatusBar:Z

.field private mNoticeBgColor:I

.field private mNoticeClickMsg:Landroid/os/Message;

.field private mNoticeHandler:Landroid/os/Handler;

.field private mNoticePanel:Landroid/widget/LinearLayout;

.field private mNoticeView:Landroid/widget/TextView;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mSlideContent:Landroid/view/View;

.field private mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

.field mSlideFromType:I

.field mSlideState:I

.field private mSlidingHideListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

.field private mSlidingShowListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

.field private mStatusBarHeight:I

.field private mWManager:Landroid/view/WindowManager;

.field private showing:Z

.field final synthetic this$0:Lcom/meizu/common/app/SlideNotice;


# direct methods
.method public constructor <init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V
    .registers 4

    .line 650
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 606
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mIsOverlaidByStatusBar:Z

    .line 612
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 623
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mContentClickListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0x50

    .line 640
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    const/4 v0, 0x3

    .line 641
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    const/4 v0, -0x1

    .line 642
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideFromType:I

    .line 644
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isSlideAnim:Z

    .line 651
    new-instance p1, Lcom/meizu/common/app/SlideNotice$NoticeHandler;

    invoke-direct {p1, p2}, Lcom/meizu/common/app/SlideNotice$NoticeHandler;-><init>(Lcom/meizu/common/app/SlideNotice;)V

    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeHandler:Landroid/os/Handler;

    .line 652
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .registers 1

    .line 579
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->destroy()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;
    .registers 1

    .line 579
    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeClickMsg:Landroid/os/Message;

    return-object p0
.end method

.method private destroy()V
    .registers 3

    .line 782
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    if-eqz v0, :cond_11

    .line 783
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 784
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideDecorView:Lcom/meizu/common/app/SlideNotice$SlideContainerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 787
    :cond_11
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->unregisterForScrollChanged()V

    const/4 v0, 0x0

    .line 788
    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->showing:Z

    const/4 v0, 0x3

    .line 790
    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideState:I

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 1047
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1049
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 1050
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1049
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_22
    const/16 p0, 0x90

    return p0
.end method

.method private init()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_slide_notice_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    .line 658
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->noticeView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeView:Landroid/widget/TextView;

    .line 659
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->noticePanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticePanel:Landroid/widget/LinearLayout;

    .line 660
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    sget v1, Lcom/meizu/common/R$id;->custom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mCustom:Landroid/widget/FrameLayout;

    .line 661
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlideContent:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/util/ResourceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mStatusBarHeight:I

    .line 664
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    .line 666
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

    invoke-direct {v0, p0, v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidingHideListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingHideListener;

    .line 667
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

    invoke-direct {v0, p0, v2}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mSlidingShowListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingShowListener;

    .line 669
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    if-eqz v0, :cond_81

    .line 671
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    goto :goto_8f

    .line 673
    :cond_81
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mWManager:Landroid/view/WindowManager;

    .line 676
    :goto_8f
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 677
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 678
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlideNotice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 683
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_d6

    .line 685
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mActionBarHeight:I

    :cond_d6
    return-void
.end method

.method private unregisterForScrollChanged()V
    .registers 4

    .line 716
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 719
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_18

    .line 722
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 723
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 725
    :cond_18
    iput-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public setBelowDefaultActionBar(Z)V
    .registers 2

    .line 739
    iput-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    .line 740
    iget-boolean p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->isBelowDefaultActionBar:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x30

    .line 741
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    :cond_a
    return-void
.end method

.method public setNoticeBgColor(I)V
    .registers 2

    .line 758
    iput p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mNoticeBgColor:I

    return-void
.end method
