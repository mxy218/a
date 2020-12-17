.class Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;
.super Ljava/lang/Object;
.source "FlymeNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field row:Landroid/view/ViewGroup;

.field rowDivider:Landroid/view/View;

.field subtitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;)V
    .registers 2

    .line 295
    invoke-direct {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;-><init>()V

    return-void
.end method
