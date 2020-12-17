.class Lcom/meizu/settings/FlymeSettingsApplication$3;
.super Ljava/lang/Object;
.source "FlymeSettingsApplication.java"

# interfaces
.implements Lcom/meizu/settings/utils/EarphonePlugedListenerHelper$OnEarphoneStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/FlymeSettingsApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/FlymeSettingsApplication;


# direct methods
.method constructor <init>(Lcom/meizu/settings/FlymeSettingsApplication;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/meizu/settings/FlymeSettingsApplication$3;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEarphoneStateChanged(Z)V
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/meizu/settings/FlymeSettingsApplication$3;->this$0:Lcom/meizu/settings/FlymeSettingsApplication;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "meizu.intent.action.UPDATE_ACCESSIBILITY_PAGE_INDEX"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
