.class Lcom/android/settingslib/bluetooth/FileCheckBean;
.super Ljava/lang/Object;
.source "FileCheckBean.java"


# instance fields
.field private code:I

.field private value:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getIntervalCheck(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/FileCheckBean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 43
    const-class v1, Lcom/android/settingslib/bluetooth/FileCheckBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/FileCheckBean;

    return-object p0
.end method


# virtual methods
.method getHttpCode()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/android/settingslib/bluetooth/FileCheckBean;->code:I

    return p0
.end method

.method needUpdate()Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/FileCheckBean;->value:Z

    return p0
.end method
