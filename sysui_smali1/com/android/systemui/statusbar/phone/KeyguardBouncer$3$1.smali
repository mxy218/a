.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    return-void
.end method
