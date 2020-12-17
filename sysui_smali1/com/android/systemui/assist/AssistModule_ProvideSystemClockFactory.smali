.class public final Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;
.super Ljava/lang/Object;
.source "AssistModule_ProvideSystemClockFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroidx/slice/Clock;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    invoke-direct {v0}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->INSTANCE:Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->INSTANCE:Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;

    return-object v0
.end method

.method public static provideInstance()Landroidx/slice/Clock;
    .registers 1

    .line 18
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->proxyProvideSystemClock()Landroidx/slice/Clock;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideSystemClock()Landroidx/slice/Clock;
    .registers 2

    .line 27
    invoke-static {}, Lcom/android/systemui/assist/AssistModule;->provideSystemClock()Landroidx/slice/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/slice/Clock;

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/slice/Clock;
    .registers 1

    .line 14
    invoke-static {}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->provideInstance()Landroidx/slice/Clock;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistModule_ProvideSystemClockFactory;->get()Landroidx/slice/Clock;

    move-result-object p0

    return-object p0
.end method
