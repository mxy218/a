.class Lcom/android/server/am/ActiveInstrumentation;
.super Ljava/lang/Object;
.source "ActiveInstrumentation.java"


# instance fields
.field mArguments:Landroid/os/Bundle;

.field mClass:Landroid/content/ComponentName;

.field mCurResults:Landroid/os/Bundle;

.field mFinished:Z

.field mHasBackgroundActivityStartsPermission:Z

.field mProfileFile:Ljava/lang/String;

.field mResultClass:Landroid/content/ComponentName;

.field final mRunningProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mTargetInfo:Landroid/content/pm/ApplicationInfo;

.field mTargetProcesses:[Ljava/lang/String;

.field mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 72
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mClass="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 100
    const-string v0, " mFinished="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRunningProcesses:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_21
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 106
    :cond_45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTargetProcesses="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTargetInfo="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_80

    .line 111
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 113
    :cond_80
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProfileFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    :cond_91
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_a2

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWatcher="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    :cond_a2
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v0, :cond_b3

    .line 120
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiAutomationConnection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 123
    :cond_b3
    const-string v0, "mHasBackgroundActivityStartsPermission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mArguments="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 76
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_17

    .line 78
    iget-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    const-string v1, "ActiveInstrumentation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-boolean v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-eqz v1, :cond_2e

    .line 89
    const-string v1, " FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_2e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, " procs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11

    .line 130
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 131
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 132
    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 134
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 137
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_39
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    .line 138
    const-wide v5, 0x20900000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 140
    :cond_48
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_54

    .line 141
    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/pm/ApplicationInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 143
    :cond_54
    const-wide v0, 0x10900000006L

    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 144
    const-wide v0, 0x10900000007L

    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 145
    const-wide v0, 0x10900000008L

    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_86

    .line 148
    const-wide v1, 0x10b0000000aL

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 150
    :cond_86
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 151
    return-void
.end method
