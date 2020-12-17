.class Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
.super Lcom/android/server/ExtconStateObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiVideoExtconUEventObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ExtconStateObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final HDMI_EXIST:Ljava/lang/String; = "HDMI=1"

.field private static final NAME:Ljava/lang/String; = "hdmi"


# instance fields
.field private final mHdmi:Lcom/android/server/ExtconUEventObserver$ExtconInfo;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 3

    .line 6008
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/server/ExtconStateObserver;-><init>()V

    .line 6011
    new-instance p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    const-string v0, "hdmi"

    invoke-direct {p1, v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->mHdmi:Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"  # Lcom/android/server/policy/PhoneWindowManager$1;

    .line 6008
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    .line 6008
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->init()Z

    move-result v0

    return v0
.end method

.method private init()Z
    .registers 6

    .line 6014
    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 6016
    .local v1, "plugged":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->mHdmi:Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->parseStateFromFile(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_32
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_11

    move v1, v0

    .line 6026
    :goto_10
    goto :goto_4e

    .line 6020
    :catch_11
    move-exception v2

    .line 6021
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->mHdmi:Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 6023
    invoke-virtual {v4}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while attempting to determine initial state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6021
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 6017
    .end local v2  # "e":Ljava/io/IOException;
    :catch_32
    move-exception v2

    .line 6018
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->mHdmi:Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-virtual {v4}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found while attempting to determine initial state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2  # "e":Ljava/io/FileNotFoundException;
    goto :goto_10

    .line 6027
    :goto_4e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->mHdmi:Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    .line 6028
    return v1
.end method


# virtual methods
.method public parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "extconIfno"  # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .param p2, "state"  # Ljava/lang/String;

    .line 6040
    const-string v0, "HDMI=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 6008
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->parseState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "extconInfo"  # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .param p2, "eventName"  # Ljava/lang/String;
    .param p3, "state"  # Ljava/lang/Boolean;

    .line 6033
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(Z)V

    .line 6034
    return-void
.end method

.method public bridge synthetic updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 6008
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->updateState(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
