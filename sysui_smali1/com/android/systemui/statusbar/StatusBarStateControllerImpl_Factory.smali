.class public final Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;
.super Ljava/lang/Object;
.source "StatusBarStateControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->INSTANCE:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->INSTANCE:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;
    .registers 1

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;
    .registers 1

    .line 13
    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->provideInstance()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->get()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    move-result-object p0

    return-object p0
.end method
