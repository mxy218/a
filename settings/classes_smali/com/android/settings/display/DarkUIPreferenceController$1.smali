.class Lcom/android/settings/display/DarkUIPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DarkUIPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/DarkUIPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/DarkUIPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/DarkUIPreferenceController;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController$1;->this$0:Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController$1;->this$0:Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->updateEnabledStateIfNeeded()V

    return-void
.end method