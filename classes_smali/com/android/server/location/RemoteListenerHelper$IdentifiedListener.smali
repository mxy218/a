.class Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdentifiedListener"
.end annotation


# instance fields
.field private final mCallerIdentity:Lcom/android/server/location/CallerIdentity;

.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .registers 4
    .param p3, "callerIdentity"  # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/CallerIdentity;",
            ")V"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mListener:Landroid/os/IInterface;

    .line 266
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;Lcom/android/server/location/RemoteListenerHelper$1;)V
    .registers 5
    .param p1, "x0"  # Lcom/android/server/location/RemoteListenerHelper;
    .param p2, "x1"  # Landroid/os/IInterface;
    .param p3, "x2"  # Lcom/android/server/location/CallerIdentity;
    .param p4, "x3"  # Lcom/android/server/location/RemoteListenerHelper$1;

    .line 260
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Landroid/os/IInterface;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mListener:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Lcom/android/server/location/CallerIdentity;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    return-object v0
.end method
