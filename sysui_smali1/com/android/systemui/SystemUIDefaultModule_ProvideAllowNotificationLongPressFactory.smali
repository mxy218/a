.class public final Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    invoke-direct {v0}, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->INSTANCE:Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->INSTANCE:Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;

    return-object v0
.end method

.method public static provideInstance()Ljava/lang/Boolean;
    .registers 1

    .line 17
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->proxyProvideAllowNotificationLongPress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideAllowNotificationLongPress()Z
    .registers 1

    .line 25
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule;->provideAllowNotificationLongPress()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 1

    .line 13
    invoke-static {}, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->provideInstance()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIDefaultModule_ProvideAllowNotificationLongPressFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
