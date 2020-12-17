.class public Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;
.super Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;
.source "FlymeNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public banned:Z

.field public desktopNotificationEnable:Z

.field public first:Z

.field public floatEnable:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public lableToPinyin:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public remindEnable:Z

.field public settingsIntent:Landroid/content/Intent;

.field public uid:I

.field public userFilter:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 469
    invoke-direct {p0, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;)V

    return-void
.end method
