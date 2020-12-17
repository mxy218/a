.class Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;
.super Landroid/database/ContentObserver;
.source "DarkIconDispatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/os/Handler;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 82
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->access$000(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V

    return-void
.end method
