.class Lcom/android/server/am/BroadcastConstants$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BroadcastConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants$SettingsObserver;->this$0:Lcom/android/server/am/BroadcastConstants;

    .line 76
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 81
    iget-object p1, p0, Lcom/android/server/am/BroadcastConstants$SettingsObserver;->this$0:Lcom/android/server/am/BroadcastConstants;

    invoke-static {p1}, Lcom/android/server/am/BroadcastConstants;->access$000(Lcom/android/server/am/BroadcastConstants;)V

    .line 82
    return-void
.end method
