.class public final Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
.super Ljava/lang/Object;
.source "WakefulnessLifecycle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .registers 1

    .line 15
    new-instance v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .registers 1

    .line 11
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->provideInstance()Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->get()Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object p0

    return-object p0
.end method
