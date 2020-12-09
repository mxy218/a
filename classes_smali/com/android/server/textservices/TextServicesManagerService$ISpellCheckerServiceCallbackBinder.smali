.class final Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;
.super Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ISpellCheckerServiceCallbackBinder"
.end annotation


# instance fields
.field private mBindGroup:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbackLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackLock:Ljava/lang/Object;

.field private mRequest:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbackLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 5

    .line 1077
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;-><init>()V

    .line 1059
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    .line 1078
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_d
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 1080
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 1081
    monitor-exit v0

    .line 1082
    return-void

    .line 1081
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 6

    .line 1088
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_c

    goto :goto_2a

    .line 1092
    :cond_c
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1093
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 1094
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 1095
    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 1096
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_2c

    .line 1097
    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    .line 1098
    invoke-virtual {v1, p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 1100
    :cond_29
    return-void

    .line 1090
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    .line 1096
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method
