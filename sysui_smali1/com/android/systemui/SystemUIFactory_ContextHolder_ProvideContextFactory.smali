.class public final Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ContextHolder_ProvideContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/SystemUIFactory$ContextHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory$ContextHolder;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->module:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;
    .registers 2

    .line 26
    new-instance v0, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;-><init>(Lcom/android/systemui/SystemUIFactory$ContextHolder;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory$ContextHolder;->provideContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->module:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->provideInstance(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->get()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
