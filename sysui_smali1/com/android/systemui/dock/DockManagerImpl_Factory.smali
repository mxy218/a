.class public final Lcom/android/systemui/dock/DockManagerImpl_Factory;
.super Ljava/lang/Object;
.source "DockManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dock/DockManagerImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dock/DockManagerImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/android/systemui/dock/DockManagerImpl_Factory;

    invoke-direct {v0}, Lcom/android/systemui/dock/DockManagerImpl_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/dock/DockManagerImpl_Factory;->INSTANCE:Lcom/android/systemui/dock/DockManagerImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dock/DockManagerImpl_Factory;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/systemui/dock/DockManagerImpl_Factory;->INSTANCE:Lcom/android/systemui/dock/DockManagerImpl_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/dock/DockManagerImpl;
    .registers 1

    .line 15
    new-instance v0, Lcom/android/systemui/dock/DockManagerImpl;

    invoke-direct {v0}, Lcom/android/systemui/dock/DockManagerImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/dock/DockManagerImpl;
    .registers 1

    .line 11
    invoke-static {}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->provideInstance()Lcom/android/systemui/dock/DockManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/dock/DockManagerImpl_Factory;->get()Lcom/android/systemui/dock/DockManagerImpl;

    move-result-object p0

    return-object p0
.end method