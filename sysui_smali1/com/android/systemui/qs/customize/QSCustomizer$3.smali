.class Lcom/android/systemui/qs/customize/QSCustomizer$3;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$100(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 319
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    :cond_22
    return-void
.end method
