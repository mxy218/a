.class Lcom/android/systemui/statusbar/phone/StatusBar$26;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->openQsOrExpandNotificationPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 5513
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 5516
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    return-void
.end method
