.class public final Lcom/flyme/systemui/power/PowerToast;
.super Ljava/lang/Object;
.source "PowerToast.java"


# static fields
.field private static mToast:Lcom/flyme/systemui/power/PowerToast;


# instance fields
.field private toast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->toast_low_power:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    sget v1, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 26
    sget v2, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    new-instance p2, Landroid/widget/Toast;

    invoke-direct {p2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    .line 30
    iget-object p1, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 31
    iget-object p0, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    const/16 p1, 0xdac

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public static showToast(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 49
    const-class v0, Lcom/flyme/systemui/power/PowerToast;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/power/PowerToast;->mToast:Lcom/flyme/systemui/power/PowerToast;

    if-nez v1, :cond_f

    .line 51
    new-instance v1, Lcom/flyme/systemui/power/PowerToast;

    invoke-direct {v1, p0, p1, p2}, Lcom/flyme/systemui/power/PowerToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v1, Lcom/flyme/systemui/power/PowerToast;->mToast:Lcom/flyme/systemui/power/PowerToast;

    goto :goto_19

    .line 53
    :cond_f
    sget-object p0, Lcom/flyme/systemui/power/PowerToast;->mToast:Lcom/flyme/systemui/power/PowerToast;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/power/PowerToast;->setIcon(I)V

    .line 54
    sget-object p0, Lcom/flyme/systemui/power/PowerToast;->mToast:Lcom/flyme/systemui/power/PowerToast;

    invoke-virtual {p0, p2}, Lcom/flyme/systemui/power/PowerToast;->setText(Ljava/lang/String;)V

    .line 56
    :goto_19
    sget-object p0, Lcom/flyme/systemui/power/PowerToast;->mToast:Lcom/flyme/systemui/power/PowerToast;

    invoke-virtual {p0}, Lcom/flyme/systemui/power/PowerToast;->show()V

    .line 57
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method


# virtual methods
.method public setIcon(I)V
    .registers 3

    .line 35
    iget-object p0, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    if-eqz p0, :cond_13

    .line 36
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    if-eqz p0, :cond_13

    .line 43
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method

.method public show()V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_33

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v2

    .line 64
    :goto_1c
    iget-object v1, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    const/16 v4, 0x31

    if-eqz v3, :cond_25

    const/high16 v3, 0x42c80000  # 100.0f

    goto :goto_27

    :cond_25
    const/high16 v3, 0x42200000  # 40.0f

    :goto_27
    invoke-static {v0, v3}, Lcom/flyme/systemui/statusbar/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v4, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 65
    iget-object p0, p0, Lcom/flyme/systemui/power/PowerToast;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_33
    return-void
.end method
