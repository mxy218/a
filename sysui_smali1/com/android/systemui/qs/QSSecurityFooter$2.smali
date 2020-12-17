.class Lcom/android/systemui/qs/QSSecurityFooter$2;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 452
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$500(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_33

    const-string/jumbo v1, "vendor.meizu.sys.cts_state"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    move v1, v3

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v2, v3

    :goto_4f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    return-void
.end method
