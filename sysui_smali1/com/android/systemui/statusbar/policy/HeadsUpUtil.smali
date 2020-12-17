.class public final Lcom/android/systemui/statusbar/policy/HeadsUpUtil;
.super Ljava/lang/Object;
.source "HeadsUpUtil.java"


# static fields
.field private static final TAG_CLICKED_NOTIFICATION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    sget v0, Lcom/android/systemui/R$id;->is_clicked_heads_up_tag:I

    sput v0, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->TAG_CLICKED_NOTIFICATION:I

    return-void
.end method

.method public static isClickedHeadsUpNotification(Landroid/view/View;)Z
    .registers 2

    .line 44
    sget v0, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->TAG_CLICKED_NOTIFICATION:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_12

    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static setIsClickedHeadsUpNotification(Landroid/view/View;Z)V
    .registers 3

    .line 35
    sget v0, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->TAG_CLICKED_NOTIFICATION:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
