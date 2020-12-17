.class Lcom/android/systemui/qs/QSDetailItems$H;
.super Landroid/os/Handler;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 310
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 316
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->access$600(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V

    goto :goto_3b

    :cond_f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    .line 318
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/QSDetailItems$Callback;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->access$700(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    goto :goto_3b

    :cond_1c
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2c

    .line 320
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    invoke-static {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->access$800(Lcom/android/systemui/qs/QSDetailItems;Z)V

    goto :goto_3b

    :cond_2c
    const/16 v2, 0x64

    if-ne v0, v2, :cond_3b

    .line 323
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    invoke-static {p0, v1}, Lcom/android/systemui/qs/QSDetailItems;->access$900(Lcom/android/systemui/qs/QSDetailItems;Z)V

    :cond_3b
    :goto_3b
    return-void
.end method
