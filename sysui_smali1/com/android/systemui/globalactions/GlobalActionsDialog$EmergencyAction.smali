.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EmergencyAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .registers 4

    .line 501
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 502
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;->shouldBeSeparated()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$color;->global_actions_alert_text:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_1f

    .line 519
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$color;->global_actions_text:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_1f
    const p2, 0x102000b

    .line 522
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 523
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p3, 0x1

    .line 524
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    const p2, 0x1020006

    .line 525
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 526
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1
.end method

.method public shouldBeSeparated()Z
    .registers 1

    .line 507
    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1200()Z

    move-result p0

    return p0
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
