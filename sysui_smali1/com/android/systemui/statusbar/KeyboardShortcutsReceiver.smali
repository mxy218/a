.class public Lcom/android/systemui/statusbar/KeyboardShortcutsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardShortcutsReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, -0x1

    .line 29
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(Landroid/content/Context;I)V

    goto :goto_20

    .line 30
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 31
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    :cond_20
    :goto_20
    return-void
.end method
