.class public Lcom/meizu/settings/widget/GuideTipsSwitchPreference;
.super Lcom/meizu/settings/widget/RestrictedSwitchPreference;
.source "GuideTipsSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

.field private mNeedShowGuideTips:Z

.field private mTips:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040017

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mNeedShowGuideTips:Z

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/GuideTipsSwitchPreference;)Lcom/meizu/common/widget/GuidePopupWindow;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hideGuideTips()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    iget-object p0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_f
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    .line 43
    invoke-super {p0, p1}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mNeedShowGuideTips:Z

    if-eqz v0, :cond_36

    .line 46
    new-instance v0, Lcom/meizu/common/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    .line 47
    iget-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->setMessage(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mGuidePopupWindow:Lcom/meizu/common/widget/GuidePopupWindow;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->setLayoutMode(I)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/widget/GuideTipsSwitchPreference$1;-><init>(Lcom/meizu/settings/widget/GuideTipsSwitchPreference;Landroid/view/View;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_36
    return-void
.end method

.method public setGuideTipsVisiable(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mNeedShowGuideTips:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/meizu/settings/widget/GuideTipsSwitchPreference;->mTips:Ljava/lang/String;

    return-void
.end method
