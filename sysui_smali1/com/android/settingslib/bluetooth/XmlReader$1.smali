.class Lcom/android/settingslib/bluetooth/XmlReader$1;
.super Ljava/lang/Object;
.source "XmlReader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/XmlReader;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/XmlReader;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/XmlReader$1;->this$0:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 76
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_35

    .line 78
    :cond_6
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/XmlReader$1;->this$0:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->access$000(Lcom/android/settingslib/bluetooth/XmlReader;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_35

    .line 79
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/XmlReader$1;->this$0:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->parseXmlToHashMap()V

    .line 80
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/XmlReader$1;->this$0:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->access$008(Lcom/android/settingslib/bluetooth/XmlReader;)I

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reparse cont is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/XmlReader$1;->this$0:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/XmlReader;->access$000(Lcom/android/settingslib/bluetooth/XmlReader;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XmlReader"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_35
    return v0
.end method
