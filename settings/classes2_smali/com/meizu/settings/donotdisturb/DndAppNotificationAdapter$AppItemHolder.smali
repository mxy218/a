.class Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;
.super Ljava/lang/Object;
.source "DndAppNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppItemHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public info:Lcom/meizu/settings/donotdisturb/DndBaseInfo;

.field public switcher:Landroid/widget/CheckBox;

.field public title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
