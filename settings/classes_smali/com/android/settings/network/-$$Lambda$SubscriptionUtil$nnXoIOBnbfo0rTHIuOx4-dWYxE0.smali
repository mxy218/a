.class public final synthetic Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;->f$0:I

    iput-object p2, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;->f$0:I

    iget-object p0, p0, Lcom/android/settings/network/-$$Lambda$SubscriptionUtil$nnXoIOBnbfo0rTHIuOx4-dWYxE0;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getAvailableSubscriptions$0(ILjava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
