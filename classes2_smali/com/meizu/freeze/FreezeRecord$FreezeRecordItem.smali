.class Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;
.super Ljava/lang/Object;
.source "FreezeRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/freeze/FreezeRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeRecordItem"
.end annotation


# instance fields
.field currentTime:J

.field fastObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/meizu/freeze/FreezeRecord;

.field type:I


# direct methods
.method public constructor <init>(Lcom/meizu/freeze/FreezeRecord;ILjava/lang/Object;)V
    .registers 6
    .param p2, "type"  # I
    .param p3, "fastObject"  # Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->this$0:Lcom/meizu/freeze/FreezeRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->currentTime:J

    .line 104
    iput p2, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->type:I

    .line 105
    iput-object p3, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 110
    iget v0, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 111
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/freeze/FreezeItem;

    invoke-virtual {v0}, Lcom/meizu/freeze/FreezeItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_e
    const/4 v1, 0x3

    const-string v2, ""

    if-ne v0, v1, :cond_2b

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_2b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4b

    .line 115
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    if-eqz v0, :cond_4a

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_4a
    return-object v2

    .line 119
    :cond_4b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 120
    iget-object v0, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/freeze/FreezeItem;

    invoke-virtual {v0}, Lcom/meizu/freeze/FreezeItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fastObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/freeze/FreezeRecord$FreezeRecordItem;->fastObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
