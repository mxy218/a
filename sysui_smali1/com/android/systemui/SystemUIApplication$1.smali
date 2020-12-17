.class Lcom/android/systemui/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 126
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/SystemUIApplication;->access$000(Lcom/android/systemui/SystemUIApplication;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 129
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/SystemUIApplication;->access$002(Lcom/android/systemui/SystemUIApplication;Z)Z

    .line 131
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/SystemUIApplication;->access$100(Lcom/android/systemui/SystemUIApplication;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 132
    iget-object p1, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {p1}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x0

    :goto_24
    if-ge p2, p1, :cond_34

    .line 134
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$1;->this$0:Lcom/android/systemui/SystemUIApplication;

    invoke-static {v0}, Lcom/android/systemui/SystemUIApplication;->access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_34
    return-void
.end method
