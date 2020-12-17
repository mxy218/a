.class public Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;
.super Ljava/lang/Object;
.source "HybridGroupManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOverflowNumberColor:I

.field private mOverflowNumberPadding:I

.field private mOverflowNumberSize:F

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->initDimens()V

    return-void
.end method

.method private bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .registers 4

    if-nez p1, :cond_6

    .line 98
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object p1

    .line 100
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 101
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 102
    invoke-virtual {p1, p3, p0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private inflateHybridViewWithStyle(I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .registers 5

    .line 61
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-class p1, Landroid/view/LayoutInflater;

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 63
    sget v0, Lcom/android/systemui/R$layout;->hybrid_notification:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .registers 3

    .line 107
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_12

    .line 109
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.bigText"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method private resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .registers 3

    .line 115
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_12

    .line 117
    iget-object p0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.title.big"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method private updateOverFlowNumberColor(Landroid/widget/TextView;)V
    .registers 2

    .line 79
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public bindFromNotification(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
    .registers 4

    .line 91
    sget v0, Lcom/android/systemui/R$style;->HybridNotification:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->bindFromNotificationWithStyle(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Landroid/app/Notification;I)Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public initDimens()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    sget v1, Lcom/android/systemui/R$dimen;->group_overflow_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberSize:F

    .line 56
    sget v1, Lcom/android/systemui/R$dimen;->group_overflow_number_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberPadding:I

    return-void
.end method

.method public setOverflowNumberColor(Landroid/widget/TextView;I)V
    .registers 3

    .line 83
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->mOverflowNumberColor:I

    if-eqz p1, :cond_7

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->updateOverFlowNumberColor(Landroid/widget/TextView;)V

    :cond_7
    return-void
.end method
