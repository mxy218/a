.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

.field private final synthetic f$1:Lcom/android/internal/telephony/OperatorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onPreferenceTreeClick$0$NetworkSelectSettings(Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method
