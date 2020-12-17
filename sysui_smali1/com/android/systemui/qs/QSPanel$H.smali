.class Lcom/android/systemui/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2

    .line 809
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V
    .registers 3

    .line 809
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 819
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 820
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V

    goto :goto_35

    :cond_15
    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    .line 822
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_35

    :cond_22
    const/16 v3, 0x63

    if-ne v0, v3, :cond_35

    .line 826
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V

    :cond_35
    :goto_35
    return-void
.end method
