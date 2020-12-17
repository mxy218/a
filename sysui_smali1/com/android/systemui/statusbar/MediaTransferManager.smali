.class public Lcom/android/systemui/statusbar/MediaTransferManager;
.super Ljava/lang/Object;
.source "MediaTransferManager.java"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mContext:Landroid/content/Context;

.field private final mOnClickHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/MediaTransferManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MediaTransferManager$1;-><init>(Lcom/android/systemui/statusbar/MediaTransferManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mOnClickHandler:Landroid/view/View$OnClickListener;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    .line 77
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MediaTransferManager;)Lcom/android/systemui/plugins/ActivityStarter;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method


# virtual methods
.method public applyMediaTransferView(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 87
    iget-object p2, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_seamless_transfer"

    invoke-static {p2, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    :cond_c
    const p2, 0x102032e

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_16

    return-void

    :cond_16
    const/4 p2, 0x0

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaTransferManager;->mOnClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method