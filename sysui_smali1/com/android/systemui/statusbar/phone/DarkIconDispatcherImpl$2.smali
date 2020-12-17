.class Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;
.super Ljava/lang/Object;
.source "DarkIconDispatcherImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->access$102(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;I)I

    return-void
.end method

.method public onStatePostChange()V
    .registers 1

    return-void
.end method

.method public onStatePreChange(II)V
    .registers 3

    return-void
.end method
